.class public La2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/d;->e(La2/d$e;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:[Ls0/c;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;[Ls0/c;)V
    .locals 0

    iput-object p1, p0, La2/d$a;->a:Ljava/util/ArrayList;

    iput-object p2, p0, La2/d$a;->b:[Ls0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/Header;JLjava/io/InputStream;)V
    .locals 0

    const-string p1, "NT$NoteServiceHelper"

    const-string p2, "downloadList Finished - "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, La2/d$a;->a:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to startImport:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La2/d$a;->b:[Ls0/c;

    const/4 p2, 0x0

    new-instance p3, Ls0/c;

    const/16 p4, 0x138

    invoke-direct {p3, p4}, Ls0/c;-><init>(I)V

    aput-object p3, p1, p2

    :goto_0
    return-void
.end method
