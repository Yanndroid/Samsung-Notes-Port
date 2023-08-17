.class public Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public id:I

.field public number:I

.field public style:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SaveNoteResolver$TaskInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->id:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->number:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->style:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->id:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskNumber()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->number:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->style:I

    return-void
.end method


# virtual methods
.method public isSameTaskGroup(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->id:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSameTaskGroup, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
