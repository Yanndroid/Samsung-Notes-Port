.class public Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private mIsUnsupportedVersion:Z

.field private mMsg:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResult:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mResult:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isUnsupportedVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mIsUnsupportedVersion:Z

    return v0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mResult:Ljava/lang/String;

    return-object p0
.end method

.method public setUnsupportedVersion(Z)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mIsUnsupportedVersion:Z

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->mUuid:Ljava/lang/String;

    return-object p0
.end method
