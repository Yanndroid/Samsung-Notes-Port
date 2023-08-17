.class public Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

.field private mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

.field private mPath:Ljava/lang/String;

.field private mState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    return-object v0
.end method

.method public getListener()Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->mState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    return-object v0
.end method
