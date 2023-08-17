.class public final synthetic Lk3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/e;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iput-object p2, p0, Lk3/e;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iput-object p3, p0, Lk3/e;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/e;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iget-object v1, p0, Lk3/e;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iget-object v2, p0, Lk3/e;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->d(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V

    return-void
.end method
