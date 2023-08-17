.class public final synthetic Lk3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/h;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;

    iput-object p2, p0, Lk3/h;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/h;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;

    iget-object v1, p0, Lk3/h;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->b(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method
