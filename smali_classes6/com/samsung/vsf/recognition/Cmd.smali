.class public abstract Lcom/samsung/vsf/recognition/Cmd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public shouldClear:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/Cmd;->shouldClear:Z

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V
.end method

.method public setClearQueue()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vsf/recognition/Cmd;->shouldClear:Z

    return-void
.end method

.method public shouldClearQueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vsf/recognition/Cmd;->shouldClear:Z

    return v0
.end method
