.class public final synthetic Lcom/samsung/android/support/senl/addons/base/binding/adapters/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# static fields
.field public static final synthetic a:Lcom/samsung/android/support/senl/addons/base/binding/adapters/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/b;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/b;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/b;->a:Lcom/samsung/android/support/senl/addons/base/binding/adapters/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewHover;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
