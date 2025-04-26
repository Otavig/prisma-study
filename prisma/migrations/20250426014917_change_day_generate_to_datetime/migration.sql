/*
  Warnings:

  - You are about to alter the column `day_generate` on the `Routes` table. The data in that column could be lost. The data in that column will be cast from `Int` to `DateTime`.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Routes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "url_generate" TEXT NOT NULL,
    "url_send" TEXT NOT NULL,
    "day_generate" DATETIME NOT NULL
);
INSERT INTO "new_Routes" ("day_generate", "id", "url_generate", "url_send") SELECT "day_generate", "id", "url_generate", "url_send" FROM "Routes";
DROP TABLE "Routes";
ALTER TABLE "new_Routes" RENAME TO "Routes";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
