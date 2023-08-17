.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SesGroupReadResolver"

.field private static mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->getGroupContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase;->mContentUri:Landroid/net/Uri;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->mInstance:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;
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
.method public getGroupContentUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "group"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupContract$Group;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "app_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getOldNotesServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "feature_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupContract$Group;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->getGroupContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMemberContentUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "group"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract$GroupMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "app_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getOldNotesServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "feature_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract$GroupMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupMemberContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->getGroupMemberContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
