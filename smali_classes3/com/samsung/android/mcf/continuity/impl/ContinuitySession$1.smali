.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createSessionStatusListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
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

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;->lambda$onSessionStatusChanged$0(I)V

    return-void
.end method

.method private synthetic lambda$onSessionStatusChanged$0(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;I)V

    return-void
.end method


# virtual methods
.method public onSessionStatusChanged(I)V
    .locals 1

    new-instance v0, Lk3/u0;

    invoke-direct {v0, p0, p1}, Lk3/u0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;I)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
