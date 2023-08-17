.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$SwipeLeftTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SwipeLeftTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$SwipeLeftTouchListener$SwipeListener;
    }
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$SwipeLeftTouchListener$SwipeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$SwipeLeftTouchListener$SwipeListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$SwipeLeftTouchListener;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/b;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$SwipeLeftTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public abstract onSwipeLeft()V
.end method

.method public abstract onSwipeRight()V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$SwipeLeftTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
