.class Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider;

.field public final synthetic val$finalUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider$1;->val$finalUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "HashTagNoteProvider"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/providers/HashTagNoteProvider$1;->val$finalUuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->delete(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete sdoc request final error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
