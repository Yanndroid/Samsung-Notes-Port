.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createSendMessageCallbackWrapper()Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;BI)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;->lambda$onMessageSent$0(Ljava/lang/String;BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(BILjava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;->lambda$onMessageSent$1(BILjava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onMessageSent$0(Ljava/lang/String;BI)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", messageId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", status = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onMessageSent$1(BILjava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    .locals 0

    invoke-virtual {p3, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->removeSendMessageCallback(B)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    :cond_0
    return-object p3
.end method


# virtual methods
.method public onMessageSent(Ljava/lang/String;BI)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/y0;

    invoke-direct {v0, p1, p2, p3}, Lk3/y0;-><init>(Ljava/lang/String;BI)V

    const-string v1, "ContinuitySession"

    const-string v2, "onMessageSent"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Landroidx/collection/ArrayMap;

    move-result-object v1

    new-instance v2, Lk3/x0;

    invoke-direct {v2, p2, p3}, Lk3/x0;-><init>(BI)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
