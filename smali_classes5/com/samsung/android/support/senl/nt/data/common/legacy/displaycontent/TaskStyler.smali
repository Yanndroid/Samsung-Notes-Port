.class public Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mEditable:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    return-void
.end method

.method private setBullet()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setTaskDone()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setTaskNone()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setTaskNumber(I)V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->setNumber(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setTaskTodo()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public setTaskGroupStyle(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-interface {v0, v1, v3, p1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public setTaskStyle(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskNumber()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->setTaskNumber(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->setBullet()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->setTaskDone()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->setTaskTodo()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->setTaskNone()V

    :goto_0
    return-void
.end method
