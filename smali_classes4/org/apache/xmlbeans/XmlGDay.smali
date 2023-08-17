.class public interface abstract Lorg/apache/xmlbeans/XmlGDay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlAnySimpleType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/XmlGDay$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "_BI_gDay"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlGDay;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract calendarValue()Ljava/util/Calendar;
.end method

.method public abstract gDateValue()Lorg/apache/xmlbeans/GDate;
.end method

.method public abstract getCalendarValue()Ljava/util/Calendar;
.end method

.method public abstract getGDateValue()Lorg/apache/xmlbeans/GDate;
.end method

.method public abstract getIntValue()I
.end method

.method public abstract intValue()I
.end method

.method public abstract set(I)V
.end method

.method public abstract set(Ljava/util/Calendar;)V
.end method

.method public abstract set(Lorg/apache/xmlbeans/GDateSpecification;)V
.end method

.method public abstract setCalendarValue(Ljava/util/Calendar;)V
.end method

.method public abstract setGDateValue(Lorg/apache/xmlbeans/GDate;)V
.end method

.method public abstract setIntValue(I)V
.end method
