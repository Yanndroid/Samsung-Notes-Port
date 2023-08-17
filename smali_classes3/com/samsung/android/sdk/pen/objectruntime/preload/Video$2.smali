.class Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->start(Ljava/lang/Object;Landroid/graphics/RectF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$100(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;I)V

    return-void
.end method

.method public onResult(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "Video"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Video file was not selected."

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$100(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "The extra data of video file is null."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    :cond_1
    move-object v4, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$200(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p1, "_id"

    const-string v2, "_data"

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "The extra data of video file is empty."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$302(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$300(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "The bitmap of video is null"

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$500(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$402(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$400(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$600(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$700(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$800()[Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "setRect"

    invoke-static {v6, v7, v9, v8, v5}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$900(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v5, p1, v3}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "PlayVideo merge process is failed"

    goto/16 :goto_0

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$700(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1100()[Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setImage"

    invoke-static {p1, v3, v6, v5, v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$900(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "VideoPath"

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$300(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$700(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1200()[Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setExtraDataString"

    invoke-static {v0, v3, v5, v4, p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$900(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$700(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1300()[Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setRotatable"

    invoke-static {v0, v3, v5, v4, p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$900(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$700(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1400()[Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setResizeOption"

    invoke-static {v0, v1, v3, v2, p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$900(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1500(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$400(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$700(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;->onObjectUpdated(Landroid/graphics/RectF;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1600(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    goto :goto_2

    :cond_5
    const-string p1, "The extra data of video file query is failed."

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$100(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;I)V

    :goto_2
    return-void
.end method
