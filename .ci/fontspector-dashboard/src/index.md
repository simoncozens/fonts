---
toc: false
sql:
  fontspector: ./fontspector.db
---

```js

import { runs } from "./runs.js";

const categoricals = {
    type: "categorical",
    domain: ['INFO', 'WARN', 'FAIL', 'ERROR'],
    range: ["#2182bf", "#bdae4f", "#cf4f2b", "#ff0000"],
    legend: true
  };

let allRuns = await runs();
let [latestRun, previousRun, ...olderRuns] = allRuns;
```

```sql id=last_run
select status, count(status) as count
  FROM (SELECT * FROM fontspector.results WHERE epoch_ms(run) == ${latestRun})
  where status == 'WARN' or status == 'FAIL'
  group by status
```

```js
const warns = last_run.toArray()[0];
const fails = last_run.toArray()[1];
```

```sql id=fails_by_run
select run, status, count(status) as count from fontspector.results
where status == 'WARN' or status == 'FAIL'
group by status, run
order by run, status;
```


<div class="hero">
  <h1> Google Fonts QA </h1>
  <h2> ${ warns.status }s last run: <span class="huge warn">${ warns.count }</h2>
  <h2> ${ fails.status }s last run: <span class="huge fail">${ fails.count }</h2>
</div>
<div class="card">

## Overall failures

```js
Plot.plot({
  marks: [
    Plot.ruleY([0]),
    Plot.line(
      fails_by_run,
      Plot.stackY2({ y: "count", x: "run", stroke: "status" })
    ),
    Plot.dot(
      fails_by_run,
      Plot.stackY2(
        { y: "count", x: "run", fill: "status", "tip": true }
      )
    )
  ],
  color: categoricals,
  width
})
```

</div>

<div class="runslider">

Select run:

```js
const runSlider = view(html`<input type=range step=1 min=0 max=${allRuns.length-1} value=${allRuns.length-1}>`)
```

```js
const selectedRun = allRuns[allRuns.length-(1+runSlider)]
```

<span class="when">${(new Date(selectedRun)).toISOString().replace("T", " ").replace(/\.\d+Z$/, "") }</span>
</div>

<div class="grid grid-cols-2">
  <div class="card">
    <h2>Most failing checks</h2>

```sql id=most_failing_checks
select check_id, status, count(status) as count
  FROM (SELECT * FROM fontspector.results WHERE epoch_ms(run) == ${allRuns[runSlider]})
  where status == 'FAIL' or status == 'ERROR' or status == 'WARN'
  group by check_id, status order by count desc limit 20;
```

```js
Plot.plot({
  marginBottom: 90,
  marginLeft: 90,
   x: {
    tickRotate: -30,
    label: null,
  },
  color: categoricals,
  marks: [
    Plot.ruleY([0]),
    Plot.rectY(most_failing_checks,
  
    { y: "count", x: "check_id", sort: {x: "y", reverse: "true"}, tip: true, fill: "status" },
  )
]})
```
  </div>
  <div class="card">

## Most failing families

```sql id=most_failing_families
select directory as family, status, count(status) as count
  FROM (SELECT * FROM fontspector.results WHERE epoch_ms(run) == ${allRuns[runSlider]})
  where (status == 'FAIL' or status == 'ERROR' or status == 'WARN')
  AND family in (SELECT directory as family FROM fontspector.results WHERE status == 'FAIL' or status == 'ERROR' or status == 'WARN' group by family order by count(status) desc limit 20)
  group by directory, status;
```

```js
Plot.plot({
  marginBottom: 60,
  
   x: {
    tickRotate: -30,
    label: null,

  },
  color: categoricals,
  marks: [
  
    Plot.ruleY([0]),
    Plot.barY(most_failing_families,
    { y: "count", x: "family", tip: true, fill: "status", sort: {x: "y", reverse: true} },
  ),
],
})
```

  </div>
</div>



<style>

.hero {
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: var(--sans-serif);
  text-wrap: balance;
  text-align: center;
}

.hero h1 {
  margin: 1rem 0;
  padding: 1rem 0;
  max-width: none;
  font-size: 14vw;
  font-weight: 900;
  line-height: 1;
  background: linear-gradient(30deg, var(--theme-foreground-focus), currentColor);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero h2 {
  margin: 0;
  max-width: 34em;
  font-size: 40px;
  font-style: initial;
  font-weight: 500;
  line-height: 1.5;
  color: var(--theme-foreground-muted);
  vertical-align: middle; 
  display: inline-block;
}

.hero h2 .huge {
  font-size: 60px;
  font-weight: 700;
  vertical-align: middle; 
}

.warn { color: #bdae4f; }
.fail { color: #cf4f2b; }

.runslider div { display: inline-block}
.runslider div:first-child { display: inline-block; width: 50% ; }
.runslider p { display: inline-block; font-family: sans-serif; }


@media (min-width: 640px) {
  .hero h1 {
    font-size: 90px;
  }
}

</style>
