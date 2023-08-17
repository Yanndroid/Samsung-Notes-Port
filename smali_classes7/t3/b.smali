.class public final synthetic Lt3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/b;->a:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;

    iput-boolean p2, p0, Lt3/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt3/b;->a:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;

    iget-boolean v1, p0, Lt3/b;->b:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->a(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Z)V

    return-void
.end method
