.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletePagesHandler"
.end annotation


# static fields
.field public static final MESSAGE_DELETE_PAGE_EXECUTE:I = 0x2

.field public static final MESSAGE_POST_EXECUTE:I = 0x3

.field public static final MESSAGE_PRE_EXECUTE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;",
            ">;"
        }
    .end annotation
.end field

.field private mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

.field private mPageCount:I

.field private mPageStartIndex:I

.field private mReultDeletedPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcDeletedPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DeletePagesHandler"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageStartIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageCount:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mSrcDeletedPageIdList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mReultDeletedPageIdList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeletePagesHandler#handleMessage, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    if-le p1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateDummyPage()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->release()V

    goto/16 :goto_2

    :cond_2
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageCount:I

    const/16 v4, 0xa

    if-le p1, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v2, v0

    move p1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageStartIndex:I

    :goto_1
    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageStartIndex:I

    add-int/2addr v4, p1

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mSrcDeletedPageIdList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->deletePageList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mReultDeletedPageIdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageStartIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageStartIndex:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageCount:I

    goto :goto_2

    :cond_5
    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageStartIndex:I

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mSrcDeletedPageIdList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mSrcDeletedPageIdList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mPageCount:I

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method

.method public release()V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->TAG:Ljava/lang/String;

    const-string v1, "DeletePagesHandler#release"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    if-eqz v1, :cond_0

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mReultDeletedPageIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)Z

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v1, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    return-void
.end method
