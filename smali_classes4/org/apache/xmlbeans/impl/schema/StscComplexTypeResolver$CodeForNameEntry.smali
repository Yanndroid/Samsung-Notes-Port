.class Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeForNameEntry"
.end annotation


# instance fields
.field public code:I

.field public name:Lorg/apache/poi/javax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;->name:Lorg/apache/poi/javax/xml/namespace/QName;

    iput p2, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$CodeForNameEntry;->code:I

    return-void
.end method
