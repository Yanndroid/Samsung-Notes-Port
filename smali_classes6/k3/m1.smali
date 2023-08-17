.class public final synthetic Lk3/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/m1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iput-object p2, p0, Lk3/m1;->b:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/m1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iget-object v1, p0, Lk3/m1;->b:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->e(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    return-void
.end method
