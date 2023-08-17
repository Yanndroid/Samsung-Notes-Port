.class Lcom/samsung/android/sdk/composer/SpenComposer$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/SpenComposer;->init(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposer;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer$1;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/SpenComposer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer$1;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->access$100(Lcom/samsung/android/sdk/composer/SpenComposer;)Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->updateScreenOrientation(Landroid/content/Context;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
