.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$6;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$registerMessageListener$10(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

.field public final synthetic val$messageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$6;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$6;->val$messageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$6;->lambda$onReceived$0(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V

    return-void
.end method

.method private static synthetic lambda$onReceived$0(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;->onReceived(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/lang/String;[B)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$6;->val$messageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    new-instance v1, Lk3/c1;

    invoke-direct {v1, v0, p1, p2}, Lk3/c1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Ljava/lang/String;[B)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
