#'
#' This dataset contains Toronto apartment building information for buildings
#' that are registered in the Apartment Building Standard (ABS) program. The
#' information was collected from building owners/managers during the initial
#' registration process. The data is refreshed monthly. Columns with ALL NA
#' values have been excluded.
#'
#' @source <https://open.toronto.ca/dataset/apartment-building-registration/>, downloaded 2020-05-05
#' @format A data frame with columns:
#' \describe{
#'  \item{id}{Unique row identifier for Open Data database.}
#'  \item{air_conditioning}{Does the building have an air conditioner? If so, is it central or in individual units?}
#'  \item{amenities}{Are there amenities available in the building? If so, what is available? Note: Amenities include outdoor or indoor pool(s), indoor rec. room, child play area, etc.}
#'  \item{balconies}{Does the building have balconies?}
#'  \item{barrier_free_accessibilty_entr}{Does the building have a barrier free accessibility entrance?}
#'  \item{bike_parking}{Is there a dedicated bike parking area? If so, how many indoor parking spots are available and how many outdoor parking spots are available?}
#'  \item{exterior_fire_escape}{Is there an exterior fire escape in the building?}
#'  \item{fire_alarm}{Are there fire alarms in the building?}
#'  \item{garbage_chutes}{Are there garbage chutes in the building?}
#'  \item{heating_type}{How is the building heated?}
#'  \item{intercom}{Does the building have an intercom system?}
#'  \item{laundry_room}{Is there a laundry room in the building?}
#'  \item{locker_or_storage_room}{Is there a locker and/or storage room in the building?}
#'  \item{no_of_elevators}{How many elevators are there in the building?}
#'  \item{parking_type}{Does the building have tenant parking? If so, what type of parking is available?}
#'  \item{pets_allowed}{Are pets allowed in the building?}
#'  \item{prop_management_company_name}{What is the name of the company who manages this property?}
#'  \item{property_type}{This field informs users of whether a building is owned privately, through TCHC or social housing.}
#'  \item{rsn}{ID number for the building. It can be used to identify unique buildings and to match with future apartment building datasets.}
#'  \item{separate_gas_meters}{Are the units separately metered for gas?}
#'  \item{separate_hydro_meters}{Are the units separately metered for hydro?}
#'  \item{separate_water_meters}{Are the units separately metered for water?}
#'  \item{site_address}{Location of the building.}
#'  \item{sprinkler_system}{Is there a sprinkler system in the building?}
#'  \item{visitor_parking}{Is there visitor parking available? If so, is the paid or unpaid parking? Note: both refers to both paid and unpaid parking.}
#'  \item{ward}{Ward that the building is located in.}
#'  \item{window_type}{What type of windows are there in the building (i.e. single or double paned glass or thermal windows)?}
#'  \item{year_built}{Year the building was built.}
#'  \item{year_registered}{Year that the building was registered in the ABS program.}
#'  \item{no_of_storeys}{Number of storeys in the building.}
#'  \item{emergency_power}{Does the building have emergency power?}
#'  \item{non-smoking_building}{Is the building a non-smoking building?}
#'  \item{no_of_units}{Number of units present in the building.}
#'  \item{no_of_accessible_parking_spaces}{How many accessible parking spaces are available?}
#'  \item{facilities_available}{Whether there is recycling and/or organic collection in the building.}
#'  \item{cooling_room}{Does the building have a cooling room?}
#'  \item{no_barrier_free_accessible_units}{Number of barrier free accessible units.}
#' }
#' @examples
#' apt_buildings
#'
#' head(apt_buildings)
#' summary(apt_buildings)

"apt_buildings"
