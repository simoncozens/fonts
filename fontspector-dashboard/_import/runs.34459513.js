import {DuckDBClient} from "../_observablehq/stdlib/duckdb.fe5704db.js";
import {FileAttachment} from "../_observablehq/stdlib.248cb05f.js";

export async function runs() {
    const db = await DuckDBClient.of({fontspector: FileAttachment({"name":"../fontspector.db","mimeType":undefined,"path":"../_file/fontspector.250fb99a.db","lastModified":1742992122235,"size":52178944}, import.meta.url)});
    let row = await db.sql`SELECT distinct run FROM fontspector.results ORDER BY run DESC `;
    return row.toArray().map(r => r.run);
}


