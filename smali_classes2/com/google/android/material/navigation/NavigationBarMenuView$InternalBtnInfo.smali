.class Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalBtnInfo"
.end annotation


# instance fields
.field public cnt:I

.field public originPos:[I

.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarMenuView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarMenuView;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->this$0:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    return-void
.end method
