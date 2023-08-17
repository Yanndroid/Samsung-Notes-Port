.class public final synthetic Lcom/samsung/android/sdk/pen/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

.field public final synthetic b:Landroid/view/MotionEvent;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenPenSound;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/a;->a:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/a;->b:Landroid/view/MotionEvent;

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/a;->a:Lcom/samsung/android/sdk/pen/engine/SpenPenSound;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/a;->b:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/a;->c:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenPenSound;->a(Lcom/samsung/android/sdk/pen/engine/SpenPenSound;Landroid/view/MotionEvent;I)V

    return-void
.end method
