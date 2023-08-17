.class public final Lcz/msebera/android/httpclient/config/RegistryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/config/RegistryBuilder;->items:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/config/RegistryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">()",
            "Lcz/msebera/android/httpclient/config/RegistryBuilder<",
            "TI;>;"
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/config/RegistryBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcz/msebera/android/httpclient/config/Registry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/config/Registry<",
            "TI;>;"
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/config/Registry;

    iget-object v1, p0, Lcz/msebera/android/httpclient/config/RegistryBuilder;->items:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/config/Registry;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TI;)",
            "Lcz/msebera/android/httpclient/config/RegistryBuilder<",
            "TI;>;"
        }
    .end annotation

    const-string v0, "ID"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Item"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/config/RegistryBuilder;->items:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/config/RegistryBuilder;->items:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
