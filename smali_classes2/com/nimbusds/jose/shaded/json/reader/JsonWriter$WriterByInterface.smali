.class Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriterByInterface"
.end annotation


# instance fields
.field public _interface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public _writer:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;->_interface:Ljava/lang/Class;

    iput-object p2, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;->_writer:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    return-void
.end method
