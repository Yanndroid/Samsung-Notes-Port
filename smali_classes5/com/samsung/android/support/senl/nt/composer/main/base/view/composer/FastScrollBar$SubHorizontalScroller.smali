.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$SubHorizontalScroller;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubHorizontalScroller"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$SubHorizontalScroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
