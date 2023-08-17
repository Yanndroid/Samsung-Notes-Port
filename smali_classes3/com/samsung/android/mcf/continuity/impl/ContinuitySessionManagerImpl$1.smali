.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->lambda$openSession$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

.field public final synthetic val$sessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$1;->val$sessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$1;->lambda$onSessionStatusChanged$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;I)V

    return-void
.end method

.method private static synthetic lambda$onSessionStatusChanged$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onSessionStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public onSessionStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$1;->val$sessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    new-instance v1, Lk3/p1;

    invoke-direct {v1, v0, p1}, Lk3/p1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;I)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
