.class public final synthetic Lp4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/b;->a:Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lp4/b;->a:Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->b(Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;)V

    return-void
.end method
