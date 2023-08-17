.class public Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final inlineImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->inlineImage:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addInlineImage(Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->inlineImage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->inlineImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getInlineImage(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->inlineImage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    return-object p1
.end method

.method public getInlineImageRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->inlineImageEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->getInlineImage(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public inlineImageEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->inlineImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
