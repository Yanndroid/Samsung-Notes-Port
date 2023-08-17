.class public final synthetic Lcom/samsung/android/sdk/pen/setting/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/util/a;->a:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/util/a;->b:F

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/util/a;->a:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/util/a;->b:F

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
