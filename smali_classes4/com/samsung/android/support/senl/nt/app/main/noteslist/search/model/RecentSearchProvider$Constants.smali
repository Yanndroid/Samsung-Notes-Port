.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchProvider$Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Constants"
.end annotation


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_SEARCH_KEYWORD:I = 0x1

.field public static final COLUMN_UPDATE_TIME:I = 0x2

.field public static final CREATE_DB:Ljava/lang/String; = "create table recent_search(_id integer primary key autoincrement, search_keyword text not null, update_time integer not null);"

.field public static final DROP_TABLE:Ljava/lang/String; = "drop table if exists recent_search"

.field public static final MAX_ROW_LIMIT:I = 0x1e

.field public static final QUERY_OLD_KEYWORDS:Ljava/lang/String; = "select _id from recent_search ORDER BY _id desc limit -1 offset 30"

.field public static final QUERY_PROJECTION:[Ljava/lang/String;

.field public static final SEARCH_KEYWORD:Ljava/lang/String; = "search_keyword"

.field public static final TABLE_NAME:Ljava/lang/String; = "recent_search"

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "search_keyword"

    const-string v2, "update_time"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchProvider$Constants;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method
