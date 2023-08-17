.class public Lcom/samsung/vsf/recognition/cmds/CancelCmd;
.super Lcom/samsung/vsf/recognition/Cmd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/recognition/Cmd;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/Cmd;->setClearQueue()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/vsf/recognition/Recognizer$CmdHandler;->cancel(Lcom/samsung/vsf/recognition/Cmd;)V

    return-void
.end method
