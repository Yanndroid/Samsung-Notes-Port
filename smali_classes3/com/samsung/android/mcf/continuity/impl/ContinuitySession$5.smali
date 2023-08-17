.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createControlSocketCallback(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

.field public final synthetic val$btMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->val$btMac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->lambda$onDisconnected$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->lambda$onPacketReceived$2(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->lambda$onPacketReceived$1(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onDisconnected$0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->forceDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onPacketReceived$1(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", message.length = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPacketReceived$2(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v0

    const-string v1, "onMessageReceived"

    const-string v2, "ContinuitySession"

    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "wrong packetType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    new-instance v0, Lk3/b1;

    invoke-direct {v0, p2, p1}, Lk3/b1;-><init>(Ljava/lang/String;[B)V

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "null mMessageListener"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;->onReceived(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->val$btMac:Ljava/lang/String;

    new-instance v1, Lk3/a1;

    invoke-direct {v1, p0, v0}, Lk3/a1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPacketReceived(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->val$btMac:Ljava/lang/String;

    new-instance v1, Lk3/z0;

    invoke-direct {v1, p0, p1, v0}, Lk3/z0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
