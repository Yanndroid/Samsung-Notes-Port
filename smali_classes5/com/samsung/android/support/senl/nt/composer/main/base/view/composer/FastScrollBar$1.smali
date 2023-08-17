.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)V

    return-void
.end method
