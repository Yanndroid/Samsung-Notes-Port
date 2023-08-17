.class public final synthetic Lk3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/d;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iput-object p2, p0, Lk3/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/d;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iget-object v1, p0, Lk3/d;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->c(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    return-void
.end method
