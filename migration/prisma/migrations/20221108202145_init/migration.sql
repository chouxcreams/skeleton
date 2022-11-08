-- CreateTable
CREATE TABLE "Task" (
    "taskId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT,
    "completed" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "versionNo" BIGINT NOT NULL,

    CONSTRAINT "Task_pkey" PRIMARY KEY ("taskId")
);
