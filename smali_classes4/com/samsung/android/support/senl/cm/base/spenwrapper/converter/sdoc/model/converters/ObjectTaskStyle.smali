.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OBJECT_PADDING_DDP:I = 0xa

.field public static final TASK_BULLET:I = 0x3

.field public static final TASK_DONE:I = 0x2

.field public static final TASK_NONE:I = 0x0

.field public static final TASK_NUMBER:I = 0x4

.field public static final TASK_NUMBER_MANUAL:I = 0x65

.field public static final TASK_TODO:I = 0x1


# instance fields
.field public mInfo:I

.field public mTaskId:I

.field public mTaskNumber:I

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mTaskId:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskNumber()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mTaskNumber:I

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskNumber()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mInfo:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getHorizontalSpace()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    const/4 v1, 0x1

    const/16 v2, 0x34

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mTaskNumber:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    const/16 v0, 0x37

    return v0

    :cond_1
    return v2
.end method

.method public setTaskType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    return-void
.end method
