.class public final synthetic Lr3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/a;->a:Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr3/a;->a:Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;->a(Lcom/samsung/android/support/senl/addons/base/model/instance/AbsInstanceModel;)V

    return-void
.end method
