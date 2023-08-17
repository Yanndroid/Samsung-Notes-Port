.class public Lcom/samsung/vsf/recognition/cmds/StopCmd;
.super Lcom/samsung/vsf/recognition/Cmd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/Cmd;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;->stop(Lcom/samsung/vsf/recognition/Cmd;)V

    return-void
.end method
