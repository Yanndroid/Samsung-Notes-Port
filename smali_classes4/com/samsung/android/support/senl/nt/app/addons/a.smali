.class public final synthetic Lcom/samsung/android/support/senl/nt/app/addons/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/a;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/a;->a:Ljava/util/Collection;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->a(Ljava/util/Collection;)V

    return-void
.end method
