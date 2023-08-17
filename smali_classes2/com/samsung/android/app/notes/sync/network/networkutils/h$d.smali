.class public Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/network/networkutils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/network/networkutils/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a:Ljava/util/Map;

    return-object v0
.end method
