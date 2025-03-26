import {DuckDBClient} from "npm:@observablehq/duckdb";
import {FileAttachment} from "observablehq:stdlib";

export async function runs() {
    const db = await DuckDBClient.of({fontspector: FileAttachment("./fontspector.db")});
    let row = await db.sql`SELECT distinct run FROM fontspector.results ORDER BY run DESC `;
    return row.toArray().map(r => r.run);
}


