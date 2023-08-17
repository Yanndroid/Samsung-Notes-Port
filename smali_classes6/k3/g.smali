.class public final synthetic Lk3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/os/IBinder;

.field public final synthetic d:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/g;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;

    iput-object p2, p0, Lk3/g;->b:Landroid/content/Context;

    iput-object p3, p0, Lk3/g;->c:Landroid/os/IBinder;

    iput-object p4, p0, Lk3/g;->d:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk3/g;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;

    iget-object v1, p0, Lk3/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lk3/g;->c:Landroid/os/IBinder;

    iget-object v3, p0, Lk3/g;->d:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->a(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method
