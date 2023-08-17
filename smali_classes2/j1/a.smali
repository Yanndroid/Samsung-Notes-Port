.class public Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Li1/j;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:F

.field public m:Z

.field public n:I

.field public o:I

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj1/a;->r:Z

    iput-object p1, p0, Lj1/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lj1/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lj1/a;->f:Ljava/lang/String;

    iput p4, p0, Lj1/a;->g:I

    iput p5, p0, Lj1/a;->h:I

    iput p6, p0, Lj1/a;->l:F

    iput-boolean v0, p0, Lj1/a;->m:Z

    const/16 p1, 0xa

    iput p1, p0, Lj1/a;->n:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj1/a;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj1/a;->p:Ljava/util/ArrayList;

    iput v0, p0, Lj1/a;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIFZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj1/a;->r:Z

    iput-object p1, p0, Lj1/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lj1/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lj1/a;->f:Ljava/lang/String;

    iput p4, p0, Lj1/a;->g:I

    iput p5, p0, Lj1/a;->h:I

    iput p6, p0, Lj1/a;->l:F

    iput-boolean p7, p0, Lj1/a;->m:Z

    iput p8, p0, Lj1/a;->n:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj1/a;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj1/a;->p:Ljava/util/ArrayList;

    iput v0, p0, Lj1/a;->q:I

    return-void
.end method


# virtual methods
.method public final a(IZ)I
    .locals 2

    iget-object v0, p0, Lj1/a;->a:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/notes/sync/R$color;->background_color_white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lj1/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lj1/a;->q:I

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj1/a;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lj1/a;->i:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lj1/a;->o:I

    return v0
.end method

.method public f()Li1/j;
    .locals 1

    iget-object v0, p0, Lj1/a;->e:Li1/j;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lj1/a;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lj1/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final i(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0xe

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasObject(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasBodyObject(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "note has Object : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CaptureNote"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lj1/a;->r:Z

    return v0
.end method

.method public k(Ljava/lang/String;III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj1/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ").jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Failed to close note : "

    const-string v3, "Failed to close capturePage : "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perform. path : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj1/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CaptureNote"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, v1, Lj1/a;->o:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lj1/a;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lj1/a;->d:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    const/4 v5, 0x0

    :try_start_0
    new-instance v7, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iget-object v8, v1, Lj1/a;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    new-instance v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v10, v1, Lj1/a;->a:Landroid/content/Context;

    iget-object v11, v1, Lj1/a;->c:Ljava/lang/String;

    iget v12, v1, Lj1/a;->g:I

    const/16 v13, 0xbb8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v5

    sget-object v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v5, v9, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v0

    :goto_0
    iput-boolean v10, v1, Lj1/a;->r:Z

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lj1/a;->b:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v10

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v11

    invoke-virtual {v1, v10, v11}, Lj1/a;->a(IZ)I

    move-result v10

    iput v10, v1, Lj1/a;->k:I

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v10

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v11

    iget-boolean v12, v1, Lj1/a;->m:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-nez v12, :cond_2

    :try_start_3
    invoke-virtual {v1, v8}, Lj1/a;->i(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v1, v8}, Lj1/a;->h(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Note has only text."

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Li1/j;

    invoke-direct {v0, v11}, Li1/j;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iput-object v0, v1, Lj1/a;->e:Li1/j;

    invoke-virtual {v0, v10}, Li1/j;->c(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v21, v3

    move-object v14, v7

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v14, v7

    goto/16 :goto_f

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v13
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eq v5, v9, :cond_3

    add-int/lit8 v13, v13, -0x1

    :try_start_5
    iput v13, v1, Lj1/a;->q:I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    if-ne v5, v9, :cond_9

    :try_start_6
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v13

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v7, v9, v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    iget v15, v1, Lj1/a;->k:I

    invoke-virtual {v7, v15}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setColorTheme(I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    int-to-float v15, v13

    int-to-float v0, v12

    const v17, 0x3fb4fdf4    # 1.414f

    mul-float v17, v17, v0

    div-float v14, v15, v17

    move-object/from16 v19, v7

    float-to-double v6, v14

    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v1, Lj1/a;->q:I

    iget v7, v1, Lj1/a;->n:I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ge v7, v6, :cond_4

    move v6, v7

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_8

    int-to-float v14, v7

    mul-float v14, v14, v17

    move/from16 v20, v6

    const/4 v6, 0x0

    cmpg-float v16, v14, v6

    if-gez v16, :cond_5

    move v14, v6

    :cond_5
    add-int/lit8 v6, v7, 0x1

    move-object/from16 v21, v3

    int-to-float v3, v6

    mul-float v3, v3, v17

    cmpl-float v22, v3, v15

    if-lez v22, :cond_6

    move/from16 v22, v6

    move v3, v15

    goto :goto_3

    :cond_6
    move/from16 v22, v6

    :goto_3
    :try_start_8
    new-instance v6, Landroid/graphics/RectF;

    move/from16 v23, v15

    const/4 v15, 0x0

    invoke-direct {v6, v15, v14, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v14, v19

    :try_start_9
    invoke-virtual {v14, v6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v6

    float-to-int v3, v3

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15, v7, v12, v13}, Lj1/a;->k(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v7

    iget v15, v1, Lj1/a;->h:I

    move-object/from16 v19, v9

    const/4 v9, 0x1

    invoke-static {v6, v7, v15, v9}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v1, Lj1/a;->d:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, v1, Lj1/a;->o:I

    iget-object v6, v1, Lj1/a;->p:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_7
    move-object/from16 v9, v19

    move/from16 v6, v20

    move-object/from16 v3, v21

    move/from16 v7, v22

    move/from16 v15, v23

    move-object/from16 v19, v14

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v14, v19

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v14, v19

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v14, v19

    goto/16 :goto_8

    :cond_8
    move-object/from16 v21, v3

    move-object/from16 v14, v19

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v14, v19

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v14, v19

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v14, v19

    goto/16 :goto_11

    :cond_9
    move-object/from16 v21, v3

    move-object v14, v7

    :try_start_a
    iget v0, v1, Lj1/a;->n:I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-ge v0, v13, :cond_a

    move v13, v0

    :cond_a
    const/16 v0, 0x64

    move v3, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_f

    :try_start_b
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v7

    invoke-virtual {v14, v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v14, v0, v11, v6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    iget v9, v1, Lj1/a;->k:I

    invoke-virtual {v14, v9}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setColorTheme(I)V

    add-int/lit8 v9, v13, -0x1

    if-ne v6, v9, :cond_d

    new-instance v9, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iget-object v15, v1, Lj1/a;->a:Landroid/content/Context;

    invoke-direct {v9, v15}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v9, v6}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureTextToPage(I)V

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v9, v6}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredFitRect(I)Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v9}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v17, v9, v15

    if-lez v17, :cond_b

    int-to-float v15, v7

    cmpl-float v15, v9, v15

    if-lez v15, :cond_c

    :cond_b
    int-to-float v9, v7

    :cond_c
    iget v15, v1, Lj1/a;->l:F

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v17, v12

    iget v12, v1, Lj1/a;->l:F

    mul-float/2addr v9, v12

    float-to-int v9, v9

    move/from16 v19, v13

    int-to-float v13, v3

    mul-float/2addr v13, v12

    float-to-int v12, v13

    const/4 v13, 0x0

    invoke-static {v15, v13, v13, v12, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_5

    :cond_d
    move-object/from16 v17, v12

    move/from16 v19, v13

    const/4 v13, 0x0

    iget v9, v1, Lj1/a;->l:F

    invoke-virtual {v14, v9}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v12

    int-to-float v9, v7

    iget v15, v1, Lj1/a;->l:F

    mul-float/2addr v9, v15

    float-to-int v9, v9

    :goto_5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v3, v7}, Lj1/a;->k(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iget v15, v1, Lj1/a;->h:I

    const/4 v13, 0x1

    invoke-static {v12, v0, v15, v13}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, v1, Lj1/a;->d:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lj1/a;->o:I

    add-int/2addr v0, v9

    iput v0, v1, Lj1/a;->o:I

    iget-object v9, v1, Lj1/a;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_e
    add-int/lit8 v6, v6, 0x1

    move v0, v3

    move v3, v7

    move-object/from16 v12, v17

    move/from16 v13, v19

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    :goto_6
    move-object v6, v0

    move-object v5, v8

    move-object/from16 v3, v21

    goto/16 :goto_18

    :catch_4
    move-exception v0

    :goto_7
    move-object v5, v8

    move-object/from16 v3, v21

    goto/16 :goto_12

    :catch_5
    move-exception v0

    :goto_8
    move-object v5, v8

    move-object/from16 v3, v21

    goto/16 :goto_16

    :cond_f
    move v12, v0

    move v13, v3

    :goto_9
    int-to-float v0, v12

    :try_start_c
    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v5, v3, :cond_10

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_10
    iget v6, v1, Lj1/a;->l:F

    :goto_a
    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v1, Lj1/a;->i:I

    int-to-float v0, v13

    if-ne v5, v3, :cond_11

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_11
    iget v3, v1, Lj1/a;->l:F

    move/from16 v18, v3

    :goto_b
    mul-float v0, v0, v18

    float-to-int v0, v0

    iput v0, v1, Lj1/a;->j:I

    new-instance v0, Li1/j;

    invoke-direct {v0, v11}, Li1/j;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iput-object v0, v1, Lj1/a;->e:Li1/j;

    invoke-virtual {v0, v10}, Li1/j;->c(I)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_c
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v3, 0x1

    :try_start_d
    invoke-virtual {v8, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_d
    :try_start_e
    invoke-virtual {v14}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v14, v7

    :goto_e
    move-object v6, v0

    :goto_f
    move-object v5, v8

    goto/16 :goto_18

    :catch_a
    move-exception v0

    move-object v14, v7

    :goto_10
    move-object v5, v8

    goto :goto_12

    :catch_b
    move-exception v0

    move-object v14, v7

    :goto_11
    move-object v5, v8

    goto/16 :goto_16

    :catchall_6
    move-exception v0

    move-object v14, v7

    goto/16 :goto_17

    :catch_c
    move-exception v0

    move-object v14, v7

    goto :goto_12

    :catch_d
    move-exception v0

    move-object v14, v7

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v6, v0

    move-object v14, v5

    goto/16 :goto_18

    :catch_e
    move-exception v0

    move-object v14, v5

    :goto_12
    :try_start_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v6, 0x1

    :try_start_10
    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    if-eqz v14, :cond_14

    :try_start_11
    invoke-virtual {v14}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_15
    iget-object v0, v1, Lj1/a;->d:Ljava/util/List;

    return-object v0

    :catch_11
    move-exception v0

    move-object v14, v5

    :goto_16
    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Runtime Exception occurred. Failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_8
    move-exception v0

    :goto_17
    move-object v6, v0

    :goto_18
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v7, 0x1

    :try_start_13
    invoke-virtual {v5, v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    goto :goto_19

    :catch_12
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_19
    if-eqz v14, :cond_16

    :try_start_14
    invoke-virtual {v14}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    goto :goto_1a

    :catch_13
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_1a
    throw v6
.end method
