.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeStyleHandler"
.end annotation


# static fields
.field private static final CHANGE_STYLE_FIRST_OBJECT_SIZE:I = 0xa

.field private static final CHANGE_STYLE_SECOND_OBJECT_SIZE:I = 0xc8

.field public static final MESSAGE_CHANGE_STYLE_NEXT:I = 0x1

.field public static final MESSAGE_CHANGE_STYLE_START:I


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ResultValues;",
            ">;"
        }
    .end annotation
.end field

.field private mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

.field private mListCount:I

.field private mListIndex:I

.field private mNoteHeight:I

.field private mNoteWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;-><init>()V

    return-void
.end method

.method private changeStyle(I)V
    .locals 5

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListIndex:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListCount:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mNoteWidth:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mNoteHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->changeStyle(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;II)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListIndex:I

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeStyleHandler#handleMessage, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListIndex:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListCount:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->release()V

    return-void

    :cond_1
    const/16 p1, 0xc8

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->changeStyle(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ResultValues;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getWNoteWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mNoteWidth:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getWNoteHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mNoteHeight:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListIndex:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ChangeStyleHandler# List size : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mListCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ResultValues;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ResultValues;-><init>()V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->commitHistory()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->clearSelection()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$ChangeStyleHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskChangeStyle$InputValues;

    :cond_1
    return-void
.end method
