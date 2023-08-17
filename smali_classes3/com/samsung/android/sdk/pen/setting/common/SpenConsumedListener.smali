.class public Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

.field private final mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

.field private mParent:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;)Landroid/view/ViewParent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->mParent:Landroid/view/ViewParent;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->mParent:Landroid/view/ViewParent;

    return-void
.end method

.method public setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->mParent:Landroid/view/ViewParent;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method
