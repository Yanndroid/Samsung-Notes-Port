.class public final synthetic Lcom/samsung/android/support/senl/addons/base/binding/adapters/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/samsung/android/support/senl/addons/base/binding/adapters/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/a;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/a;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/a;->a:Lcom/samsung/android/support/senl/addons/base/binding/adapters/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BATouch;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
