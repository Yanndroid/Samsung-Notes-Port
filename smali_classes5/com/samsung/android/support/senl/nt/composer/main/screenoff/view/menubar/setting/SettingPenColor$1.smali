.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
