.class Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl$CsvValueEscaper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;->objectEscaper()Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl$CsvValueEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl$CsvValueEscaper<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl$1;->this$0:Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl$1;->this$0:Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;

    invoke-static {v0}, Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;->access$000(Lio/netty/handler/codec/http/CombinedHttpHeaders$CombinedHttpHeadersImpl;)Lio/netty/handler/codec/ValueConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/ValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/netty/util/internal/StringUtil;->escapeCsv(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
