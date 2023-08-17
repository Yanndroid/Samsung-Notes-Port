.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;
.source "SourceFile"


# static fields
.field private static final AUTHORITY_ITEM:Ljava/lang/String;

.field private static final AUTHORITY_SPACE:Ljava/lang/String;

.field private static final CONTENT_ITEM_URI:Ljava/lang/String;

.field private static final CONTENT_SPACE_URI:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SesShareReadResolver"

.field private static mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.samsung.android.mobileservice.social.share.note_space/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getOldNotesServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->AUTHORITY_SPACE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.samsung.android.mobileservice.social.share.note_item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getOldNotesServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->AUTHORITY_ITEM:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->CONTENT_SPACE_URI:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->CONTENT_ITEM_URI:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getSharedContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase;->mContentUri:Landroid/net/Uri;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getSharedContentUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->CONTENT_SPACE_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/space"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSharedItemContentUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->CONTENT_ITEM_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSharedItemContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->CONTENT_ITEM_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/space"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getSharedItemContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->CONTENT_ITEM_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/space"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "item"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
