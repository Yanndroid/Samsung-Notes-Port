.class public final synthetic Lcom/samsung/android/support/senl/nt/app/addons/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/c;->a:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/c;->a:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V

    return-void
.end method
