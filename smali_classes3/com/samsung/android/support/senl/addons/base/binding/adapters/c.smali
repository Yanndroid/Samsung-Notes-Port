.class public final synthetic Lcom/samsung/android/support/senl/addons/base/binding/adapters/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/c;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/c;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;->a(Landroid/widget/TextView;)V

    return-void
.end method
