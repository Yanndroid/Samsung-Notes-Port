.class public Li1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/j$a;
    }
.end annotation


# static fields
.field public static f:Li1/j$a;


# instance fields
.field public a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li1/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li1/j$a;-><init>(Li1/i;)V

    sput-object v0, Li1/j;->f:Li1/j$a;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>()V

    iput-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RichTextData"

    const-string v2, "copy failed "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li1/j;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Li1/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Li1/j;->d:Ljava/util/ArrayList;

    const p1, -0x30304

    iput p1, p0, Li1/j;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v1, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\r|\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_2

    return-void

    :cond_2
    array-length v2, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v2, v4, v6

    const-class v2, I

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move v4, v6

    move v7, v4

    move v8, v7

    :goto_0
    array-length v9, v1

    if-ge v4, v9, :cond_5

    aget-object v9, v1, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    if-nez v7, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    if-nez v4, :cond_4

    aget-object v9, v2, v4

    aput v6, v9, v6

    aget-object v9, v2, v4

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    aput v10, v9, v5

    goto :goto_2

    :cond_4
    aget-object v9, v2, v4

    add-int/lit8 v10, v4, -0x1

    aget-object v10, v2, v10

    aget v10, v10, v5

    add-int/2addr v10, v5

    aput v10, v9, v6

    aget-object v9, v2, v4

    aget-object v10, v2, v4

    aget v10, v10, v6

    aget-object v11, v1, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v9, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v4, v1

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v9, "RichTextData"

    if-eqz v7, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    move-object v10, v7

    check-cast v10, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v11

    if-eq v11, v3, :cond_9

    const/4 v12, 0x4

    if-eq v11, v12, :cond_8

    const/16 v10, 0x8

    if-eq v11, v10, :cond_7

    move-object v10, v1

    goto :goto_4

    :cond_7
    const-string/jumbo v10, "\u2022 "

    goto :goto_4

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletNumber()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ". "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_9
    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "[v] "

    goto :goto_4

    :cond_a
    const-string v10, "[ ] "

    :goto_4
    if-eqz v10, :cond_6

    :try_start_0
    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v11

    array-length v12, v2

    if-ge v11, v12, :cond_c

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v11

    aget-object v11, v2, v11

    aget v11, v11, v6

    iget-object v12, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_b

    iget-object v12, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v12, v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;I)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v11

    aget-object v11, v2, v11

    aget v12, v11, v5

    add-int/2addr v12, v10

    aput v12, v11, v5

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v7

    add-int/2addr v7, v5

    :goto_5
    array-length v11, v2

    if-ge v7, v11, :cond_6

    aget-object v11, v2, v7

    aget v12, v11, v6

    add-int/2addr v12, v10

    aput v12, v11, v6

    aget-object v11, v2, v7

    aget v12, v11, v5

    add-int/2addr v12, v10

    aput v12, v11, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "text insert position error, pos : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " length : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    if-nez v4, :cond_d

    array-length v11, v2

    sub-int/2addr v11, v5

    aget-object v11, v2, v11

    aget v11, v11, v5

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v7

    add-int/2addr v11, v7

    array-length v7, v2

    sub-int/2addr v11, v7

    add-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v11, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_6

    iget-object v7, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v7, v10

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v7

    const-string v10, "text insert error"

    invoke-static {v9, v10, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_e
    :try_start_1
    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_f

    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0, v6, v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeText(II)V

    :cond_f
    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_6
    if-lez v2, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_10

    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_11
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_12

    iget-object v2, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeText(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const-string v0, "text remove empty line error"

    invoke-static {v9, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_8
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Li1/j;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Li1/j;->e:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Li1/j;->a()V

    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li1/j;->a:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x0

    const/16 v2, 0x7530

    sget-object v3, Li1/j;->f:Li1/j$a;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertSpenTextToSpannableSBuilder(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method
