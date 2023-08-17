.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor$GestureListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor$GestureListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor$GestureListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColor;)V

    const/4 p1, 0x1

    return p1
.end method
