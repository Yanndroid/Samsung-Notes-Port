.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetNoteLatestInfoRunnable"


# instance fields
.field private final mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "yyyy-MM-dd hh:mm:ss.SSS"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private printResponse(LnoteSnapMessage/NoteInfoResponse;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response# "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "checkpoint: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/NoteInfoResponse;->getCheckpoint()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modifiedTime: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, LnoteSnapMessage/NoteInfoResponse;->getModifiedtime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", commitId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/NoteInfoResponse;->getCommitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/NoteInfoResponse;->hasResponseResult()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/NoteInfoResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResponseResultLog(LnoteSnapMessage/ResponseResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "GetNoteLatestInfoRunnable"

    return-object v0
.end method

.method public run()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "]"

    const-string v3, "GetNoteLatestInfoRunnable"

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    const-string v9, ""

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-static {}, LnoteSnapMessage/NoteInfoRequest;->newBuilder()LnoteSnapMessage/NoteInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, LnoteSnapMessage/NoteInfoRequest;

    iget-object v8, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request, requestId: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual {v10, v8, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->getLatestNoteInfo(Ljava/lang/String;LnoteSnapMessage/NoteInfoRequest;)LnoteSnapMessage/NoteInfoResponse;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->printResponse(LnoteSnapMessage/NoteInfoResponse;)V

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object v8

    invoke-virtual {v8}, LnoteSnapMessage/ResponseResult;->getCode()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getCheckpoint()J

    move-result-wide v11
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getModifiedtime()J

    move-result-wide v13
    :try_end_1
    .catch Lio/grpc/StatusRuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getCommitId()Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Lio/grpc/StatusRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-wide v5, v11

    move-wide v7, v13

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-wide v5, v11

    move-wide v7, v13

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v5, v11

    move-wide v7, v13

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide v7, v6

    move-wide v5, v11

    goto :goto_4

    :catch_2
    move-exception v0

    move-wide v7, v6

    move-wide v5, v11

    goto :goto_0

    :catch_3
    move-exception v0

    move-wide v7, v6

    move-wide v5, v11

    goto :goto_1

    :catchall_2
    move-exception v0

    move-wide v7, v6

    move-wide v5, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-wide v7, v6

    move-wide v5, v4

    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request, Exception: ["

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception v0

    move-wide v7, v6

    move-wide v5, v4

    :goto_1
    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_2
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    :goto_3
    return-void

    :catchall_3
    move-exception v0

    :goto_4
    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/GetNoteLatestInfoRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    throw v0
.end method
