/*
  Warnings:

  - The primary key for the `Task` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to alter the column `title` on the `Task` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - Changed the type of `taskId` on the `Task` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Task" DROP CONSTRAINT "Task_pkey",
DROP COLUMN "taskId",
ADD COLUMN     "taskId" UUID NOT NULL,
ALTER COLUMN "title" SET DATA TYPE VARCHAR(50),
ADD CONSTRAINT "Task_pkey" PRIMARY KEY ("taskId");
