.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndentHandler"
.end annotation


# static fields
.field private static final INDENT_PROCESS_SIZE:I = 0x32

.field public static final MESSAGE_INDENT_NEXT:I = 0x1

.field public static final MESSAGE_INDENT_START:I


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$ResultValues;",
            ">;"
        }
    .end annotation
.end field

.field private mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;

.field private final mListEnd:I

.field private mListIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$ResultValues;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mParagraphIndex:[I

    const/4 p2, 0x1

    aget p2, p1, p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListEnd:I

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListIndex:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndentHandler# start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " end : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applyIndent()V
    .locals 9

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListIndex:I

    add-int/lit8 v1, v0, 0x32

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListEnd:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListIndex:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyIndent from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mIndent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    iget-object v5, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-boolean v6, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mIsPlus:Z

    iget v7, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mDirection:I

    iget-object v8, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mIndentParagraphArray:[Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->appendIndentParagraph([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;ZI[Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndentHandler#handleMessage, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListIndex:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mListEnd:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->release()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->applyIndent()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$ResultValues;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$ResultValues;-><init>()V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;

    :cond_1
    return-void
.end method
